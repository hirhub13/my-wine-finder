/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package database;

import java.sql.Connection;
import java.sql.DriverManager;
import java.util.LinkedList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author hirhu
 */
public class DB_CachedConnection implements DB_Config
{

    private LinkedList<Connection> connList = new LinkedList<>();
    private int numOpenConnections = 0;

    private static DB_CachedConnection theInstance;

    static
    {
        try
        {
            theInstance = new DB_CachedConnection();
        } catch (Exception ex)
        {
            throw new ExceptionInInitializerError(ex);
        }
    }

    public static DB_CachedConnection getInstance()
    {
        return theInstance;
    }

    private DB_CachedConnection() throws ClassNotFoundException
    {
        Class.forName(DB_DRIVER);
    }

    public Connection getConnection() throws Exception
    {
        //System.out.println(connList.size());
        synchronized (connList)
        {
            if (connList.isEmpty())
            {
                if (numOpenConnections >= DB_MAX_CONNECTIONS)
                {
                    throw new Exception("Connection limit reached - try again later");
                }
                Connection conn = DriverManager.getConnection(DB_URL + DB_NAME, DB_USERNAME, DB_PASSWORD);
                numOpenConnections++;
                return conn;
            } else
            {
                return connList.poll(); //Zurück geben und löschen
            }
        }
    }

    public void releaseConnection(Connection conn) //Diese nie vergessen
    {
        synchronized (connList)
        {
            if (connList != null)
            {
                connList.offer(conn); //Am Ende anhängen
            }
        }
    }

    public static void main(String[] args)
    {
        try
        {
            DB_CachedConnection dba = DB_CachedConnection.getInstance();
            for (int i = 1; i < 90; i++)
            {
                Connection conn = dba.getConnection();
                dba.releaseConnection(conn);
            }
            System.out.println("Connection erfolgreich");
        } catch (Exception ex)
        {
            System.out.println(ex.toString());
        }
    }
}
