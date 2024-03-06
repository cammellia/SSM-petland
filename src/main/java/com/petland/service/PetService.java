package com.petland.service;

import com.petland.entity.Pet;

import java.util.List;

public interface PetService {
    List<Pet> getPet();
    Pet getPetById(int id);
}
