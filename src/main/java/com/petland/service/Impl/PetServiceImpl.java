package com.petland.service.Impl;

import com.petland.dao.PetDao;
import com.petland.entity.Pet;
import com.petland.service.PetService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * @program: PetLand
 * @description:
 * @author: DY
 * @create: 2024-01-30 19:00
 **/

@Service
public class PetServiceImpl implements PetService{
    @Autowired
    private PetDao petDao;

    @Override
    public List<Pet> getPet() {
        return petDao.getPet();
    }
    @Override
    public Pet getPetById(int id) {
        return petDao.getPetById(id);
    }
}
