/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package entity;

import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author admin
 */
public class Cart {
    
    List<Item> items;

    public Cart() {
        items = new ArrayList<>();
    }

    public Cart(List<Item> items) {
        this.items = items;
    }

    public List<Item> getItems() {
        return items;
    }

    public void setItems(List<Item> items) {
        this.items = items;
    }

    // so luong 1 san pham trong gio hang khach se mua 
    public int getQuantityById(String id) {
        return getItemById(id).getQuantity(); // so luong 
    }

    private Item getItemById(String id) {
        for (Item i : items) {
            if (i.getProduct().getProduct_id().equals(id)) {
                return i;
            }
        }
        return null;
    }

    private Item CheckItem(String id) {
        for (Item i : items) {
            if (i.getProduct().getProduct_id().equals(id)) {
                return i;
            }
        }
        return null;
    }

    // add san pham vao gio, neu co roi thi tang so luong 
    public void addItem(Item t) {
        if (getItemById(t.getProduct().getProduct_id()) != null
                && CheckItem(t.getProduct().getProduct_id()) != null) {
            Item m = getItemById(t.getProduct().getProduct_id());
            m.setQuantity(m.getQuantity() + t.getQuantity());
        } else {
            items.add(t);
        }
    }

    // xoa san pham(tru di) khoi gio
    public void removeItem(String id) {
        if (getItemById(id) != null) {
            items.remove(getItemById(id));
        }
    }

    // ton tien cua ca gio hang -- se duoc add vao bang order 
    public double getTotalMoney() {
        double t = 0;
        for (Item i : items) {
            t += (i.getQuantity() * i.getProduct().product_price);
        }
        return t;
    }
    
}
