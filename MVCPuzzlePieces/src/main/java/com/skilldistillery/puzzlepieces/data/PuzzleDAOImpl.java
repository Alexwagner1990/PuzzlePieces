package com.skilldistillery.puzzlepieces.data;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

import org.springframework.stereotype.Component;
import org.springframework.transaction.annotation.Transactional;

import com.skilldistillery.puzzlepieces.entities.InventoryItem;

@Transactional
@Component
public class PuzzleDAOImpl implements PuzzleDAO{
	
	@PersistenceContext
	private EntityManager em;
	
	
	@Override
	public InventoryItem addPuzzle(InventoryItem p) {
		em.persist(p);
		em.flush();
		return p;
	}
	
	@Override
    public InventoryItem update(int id, InventoryItem updated) {
		InventoryItem managedPuzzle = em.find(InventoryItem.class, id);
		managedPuzzle.setCondtion(updated.getCondtion());
		managedPuzzle.setPuzzleId(updated.getPuzzleId());
		managedPuzzle.setLoanerId(updated.getLoanerId());
		managedPuzzle.setOwnerId(updated.getOwnerId());
        
        em.persist(managedPuzzle);
        em.flush();
        return managedPuzzle;
    }
	
	@Override
	public InventoryItem retrieveById(int id) {
		return em.find(InventoryItem.class, id);
	}
	
	@Override
	public List<InventoryItem> retrieveAll() {
		String query = "SELECT it From InventoryItem it";
		List<InventoryItem> tshirt = em.createQuery(query, InventoryItem.class).getResultList();
		return tshirt;	
	}
	
	@Override
	public boolean destroy(int id) {
		try {
			boolean d = false;
			InventoryItem it = em.find(InventoryItem.class, id);
			em.remove(it);
			em.flush();
			return true;
		} catch (Exception e) {
			return false;
		}
	}
	
}
