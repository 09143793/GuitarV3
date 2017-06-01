package dao;


public class dataAccess {
	private static String db="sqlite";
    public static GuitarDao createGuitarDao() {
		GuitarDao result=null;
		switch (db) {
		case "sqlite":
			result=new sqliteDao.GuitarDaoImpl();
			break;
		   case "mysql":
		result=new mysqlDao.GuitarDaoImpl();
			break;
		}
		return result;
	}
}
