package com.skilldistillery.puzzlepieces.data;

import java.util.List;

import com.skilldistillery.puzzlepieces.entities.Condition;
import com.skilldistillery.puzzlepieces.entities.InventoryItem;
import com.skilldistillery.puzzlepieces.entities.Request;
import com.skilldistillery.puzzlepieces.entities.User;

public interface PuzzleDAO {

//	public List<InventoryItem> searchInventoryByCategoryName(String name);

	List<InventoryItem> retrieveAll();

	boolean destroy(int id);

	InventoryItem updateInventory(int id, InventoryItem updated);

	InventoryItem addInventory(InventoryItem p);

	List<InventoryItem> searchPuzzle(String name, int size, Condition condition);


	Request requestUserForPuzzle(InventoryItem id, User loggedInUser);

	InventoryItem updateRequest(Integer inventoryId);

	
}
