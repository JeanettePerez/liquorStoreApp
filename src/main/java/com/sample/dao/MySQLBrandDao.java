package com.sample.dao;

import com.mysql.jdbc.Driver;
import com.sample.model.InventoryItem;
import java.sql.DriverManager;
import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class MySQLBrandDao implements InventoryItems {
  private Connection connection = null;

  public MySQLBrandDao(Config config) {
    try {
      DriverManager.registerDriver(new Driver());
      connection = DriverManager.getConnection(
        config.getUrl(),
        config.getUser(),
        config.getPassword()
      );
    } catch (SQLException e) {
      throw new RuntimeException("Connection to database failed", e);
    }
  }

  @Override
  public List<InventoryItem> all() {
    PreparedStatement stmt = null;
    String allQuery = "SELECT * FROM inventory_items";
    try {
      stmt = connection.prepareStatement(allQuery);
      ResultSet resultSet = stmt.executeQuery();
      return createBrandFromResults(resultSet);
    } catch (SQLException e) {
      throw new RuntimeException("Error in retrieving all items", e);
    }

  }

  @Override
  public InventoryItem search(Long id) {
    return null;
  }

  @Override
  public void insert(InventoryItem item) {

  }

  @Override
  public void update(InventoryItem item) {

  }

  @Override
  public void delete(InventoryItem item) {

  }
  private InventoryItem extractBrand(ResultSet resultSet) throws SQLException {
    return new InventoryItem(
      resultSet.getString("itemName"),
      resultSet.getString("alcoholType"),
      resultSet.getDouble("price")
    );
  }

  private List<InventoryItem> createBrandFromResults(ResultSet resultSet) throws SQLException{
    List<InventoryItem> items = new ArrayList<>();
    while(resultSet.next()){
      items.add(extractBrand(resultSet));
    }
    return items;
  }

}
