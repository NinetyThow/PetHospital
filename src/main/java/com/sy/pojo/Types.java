package com.sy.pojo;

import java.util.ArrayList;
import java.util.List;

public class Types {
    private int typeId;
    private String typeName;
    private List<Pets> list = new ArrayList<>();

    public int getTypeId() {
        return typeId;
    }

    public void setTypeId(int typeId) {
        this.typeId = typeId;
    }

    public String getTypeName() {
        return typeName;
    }

    public void setTypeName(String typeName) {
        this.typeName = typeName;
    }

    public List<Pets> getList() {
        return list;
    }

    public void setList(List<Pets> list) {
        this.list = list;
    }
}
