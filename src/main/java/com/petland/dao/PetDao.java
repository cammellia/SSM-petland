package com.petland.dao;

import com.petland.entity.Pet;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.List;

/**
 * @program: PetLand
 * @description:
 * @author: DY
 * @create: 2024-01-30 16:14
 **/
@Repository
public class PetDao {
    @Autowired
    private SqlSessionTemplate sqlSessionTemplate;

    public List<Pet> getPet(){
        return sqlSessionTemplate.selectList("petMapper.getPet");
    }
    public Pet getPetById(int id){
        return sqlSessionTemplate.selectOne("petMapper.getPetById",id);
    }
}
