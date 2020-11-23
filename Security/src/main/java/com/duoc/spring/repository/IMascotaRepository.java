package com.duoc.spring.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.duoc.spring.model.Mascota;

public interface IMascotaRepository extends JpaRepository<Mascota, Integer> {

}
