package com.zxbangban.enums;

public enum MaterialType {
    CERAMIC_TITEL(1,"瓷砖"),
    WOOD_FLOOR(2,"木地板"),
    CUPBOARD(3,"橱柜"),
    FURNITURE(4,"家具"),
    MADE_FURNITURE(5,"定制家具"),
    WOOD_DOORS(6,"木门"),
    SANITARY_APPLIANCE(7,"洁具卫浴"),
    OTHERS(8,"其他");

    private String material;

    private Integer mater_id;

    MaterialType(Integer mater_id,String material) {
        this.material = material;
        this.mater_id = mater_id;
    }

    public String getMaterial() {
        return material;
    }

    public Integer getMater_id() {
        return mater_id;
    }

    public static MaterialType materialInfo(Integer mid){
        for (MaterialType materialType:MaterialType.values() ) {
            if(materialType.mater_id.equals(mid)){
                return materialType;
            }
        }
        return null;
    }
}
