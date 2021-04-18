package com.sample.dao;

public class DaoFactory {
  private static Config config = new Config();
  private static InventoryItems itemsDao;
  public static InventoryItems getItemsDao() {
    if(itemsDao == null) {
      itemsDao = new MySQLBrandDao(config);
    }
    return itemsDao;
  }
}
