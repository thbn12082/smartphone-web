package com.example.smartphone.domain.DTO;

import java.util.List;
import java.util.Optional;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class ProductCriterialDTO {
    Optional<String> pageOptional;//
    Optional<String> nameOptional;//
    Optional<String> factory; //
    Optional<List<String>> target;//
    Optional<String> price;//
    Optional<String> sort;//
}
