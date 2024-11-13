package com.baltazarguilherme.dslist.repositories;

import org.springframework.data.jpa.repository.JpaRepository;

import com.baltazarguilherme.dslist.entities.GameList;

public interface GameListRepository extends JpaRepository<GameList, Long>{
	
	
}
