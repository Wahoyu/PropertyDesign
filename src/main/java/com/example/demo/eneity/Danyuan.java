package com.example.demo.eneity;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class Danyuan {
    Integer id;
    String name;
    Integer building_id;
    Building building;
}