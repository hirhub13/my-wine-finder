/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package database;

/**
 *
 * @author hirhu
 */
public interface DB_Config
{
    public static final String DB_URL = "jdbc:postgresql://localhost:5432/";
    public static final String DB_NAME = "weindb";
    public static final String DB_PASSWORD = "postgres";
    public static final String DB_USERNAME= "postgres";
    public static final String DB_DRIVER = "org.postgresql.Driver";
    public static final int DB_MAX_CONNECTIONS = 900;
}
