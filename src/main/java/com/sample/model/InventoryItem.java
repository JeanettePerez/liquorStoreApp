package com.sample.model;

public class InventoryItem {
  private String itemName;
  private String alcoholType;
  private Double price;

  public InventoryItem(String itemName, String alcoholType, Double price) {
    this.itemName = itemName;
    this.alcoholType = alcoholType;
    this.price = price;
  }

  public String getItemName() {
    return itemName;
  }

  public void setItemName(String itemName) {
    this.itemName = itemName;
  }

  public String getAlcoholType() {
    return alcoholType;
  }

  public void setAlcoholType(String alcoholType) {
    this.alcoholType = alcoholType;
  }

  public Double getPrice() {
    return price;
  }

  public void setPrice(Double price) {
    this.price = price;
  }
}
