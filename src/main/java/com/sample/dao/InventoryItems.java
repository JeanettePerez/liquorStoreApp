package com.sample.dao;



import com.sample.model.InventoryItem;

import java.util.List;

public interface InventoryItems {
 List<InventoryItem> all();
 InventoryItem search(Long id);
 void insert(InventoryItem item);
 void update(InventoryItem item);
 void delete(InventoryItem item);


}
