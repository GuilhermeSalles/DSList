package com.baltazarguilherme.dslist.repositories;

import org.springframework.data.jpa.repository.JpaRepository;

import com.baltazarguilherme.dslist.entities.Game;

public interface GameRepository extends JpaRepository<Game, Long>{
	
	
}
