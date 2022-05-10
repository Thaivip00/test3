/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package sample.shopping;

import java.util.HashMap;
import java.util.Map;

public class Cart {

    private Map<String, Tea> cart;

    public Cart() {
    }

    public Cart(Map<String, Tea> cart) {
        this.cart = cart;
    }

    public Map<String, Tea> getCart() {
        return cart;
    }

    public void setCart(Map<String, Tea> cart) {
        this.cart = cart;
    }

    //Thêm sản phẩm vào giỏ hàng 
    public boolean add(Tea tea) {
        boolean check = false;
        try {
            if (this.cart == null)//chưa có tạo mới
            {
                this.cart = new HashMap<>();
            }
            if (this.cart.containsKey(tea.getId())) {//nếu có rồi
                int currentQuantity = this.cart.get(tea.getId()).getQuantity();
                tea.setQuantity(currentQuantity + tea.getQuantity()); //cập nhật và add vào
            }
            this.cart.put(tea.getId(), tea);
            check = true;
        } catch (Exception e) {
            e.printStackTrace();
        }
        return check;
    }

    //Remove 
    public boolean remove(String id) {
        boolean check = false;
        try {
            if (this.cart != null) {
                if (this.cart.containsKey(id)) {
                    this.cart.remove(id);
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return check;
    }

    //edit
    public boolean edit(String id, Tea tea) {
        boolean check = false;
        try {
            if (this.cart != null) {
                if (this.cart.containsKey(id)) {
                    this.cart.replace(id, tea);
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return check;
    }
}
