package com.skilldistillery.puzzlepieces.data;

import java.util.List;

import javax.servlet.http.HttpSession;

import com.skilldistillery.puzzlepieces.entities.Address;
import com.skilldistillery.puzzlepieces.entities.PuzzleRating;
import com.skilldistillery.puzzlepieces.entities.User;
import com.skilldistillery.puzzlepieces.entities.UserInformation;
import com.skilldistillery.puzzlepieces.entities.UserRating;

public interface UserDAO {

	User createUser(User user);
	
	Address createAddress(int id, Address newAddress);

	public User updateUser(int id, User updated);

	List<User> searchUserByUserRating(int rating);

	List<User> searchUserByUserName(String userName);

	User userLoginByUserNameAndPassword(String userName, String password);

	boolean deleteUser(int userId);
	
    UserInformation updateUserInformation(int id, UserInformation updated); 
    
    Address updateAddress(int id, Address updatedAddress);

    boolean isUserNameTaken(String userName);
    
    User getUserById(int userId);
    
    UserRating createUserRating(int userId, UserRating userRating, HttpSession session);
    
    PuzzleRating createPuzzleRating(int puzzleId, PuzzleRating puzzleRating, HttpSession session);
    
    Boolean checkIfUserHasRatedPuzzleBefore(User user, int invId);
    
    Boolean checkIfUserHasRatedUserBefore(User user, int userId);
    
    
}
