/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package database;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.HashMap;
import java.util.Map;

/**
 *
 * @author hirhu
 */
public class DB_PStatPool {

    private static DB_PStatPool theInstance;

    public static DB_PStatPool getInstance() {
        if (theInstance == null) {
            theInstance = new DB_PStatPool();
        }
        return theInstance;
    }

    private DB_PStatPool() {
        sqlStringMap.put(DB_StmtType.getWeine, "SELECT * FROM weine;");
    }
    private Map<DB_StmtType, String> sqlStringMap = new HashMap<>();
    private Map<Connection, PreparedStatement> weineMap = new HashMap<>();

    public PreparedStatement getPrepStatment(Connection conn, DB_StmtType stmtType) throws SQLException {
        Map<Connection, PreparedStatement> connectionMap = getConnectionMap(stmtType);
        PreparedStatement pStat = connectionMap.get(conn);
        if (pStat == null) {
            String sqlString = sqlStringMap.get(stmtType);
            pStat = conn.prepareStatement(sqlString);
            connectionMap.put(conn, pStat);
        }
        return pStat;
    }

    public Map<Connection, PreparedStatement> getConnectionMap(DB_StmtType stmtType) {
        switch (stmtType) {
            case getWeine:
                return weineMap;
        }
        return null;
    }
}
