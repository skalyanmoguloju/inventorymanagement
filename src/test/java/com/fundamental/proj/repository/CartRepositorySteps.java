package com.fundamental.proj.repository;

import com.fundamental.proj.model.Cart;
import com.fundamental.proj.model.Items;
import cucumber.api.java.en.And;
import cucumber.api.java.en.Given;
import cucumber.api.java.en.Then;
import cucumber.api.java.en.When;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;

import org.junit.Assert;
import org.junit.Test;

import org.mockito.*;
import org.mockito.BDDMockito;

import java.util.ArrayList;
import java.util.List;

/**
 * Created by Daniel Dao on 3/8/16.
 */

public class CartRepositorySteps {

    @Mock
    private SessionFactory mockedSessionFactory;

    @Mock
    private Session mockedSession;

    @Mock
    private Query mockedQuery;

    @InjectMocks
    private CartRepository cartRepository;

    private List<Cart> expectedListCart;

    @Given("^mock CartRepository is initialized$")
    public void mock_cartrepository_is_initialized() throws Throwable {
        MockitoAnnotations.initMocks(this);
        Mockito.reset(mockedSessionFactory, mockedSession, mockedQuery);
    }

    /************************************************/
    /*
     * Test updateCart()
     */
    /***********************************************/
    @When("^updateCart\\(\\) is called$")
    public void updatecart_is_called() throws Throwable {
        Mockito.when(mockedSessionFactory.getCurrentSession()).thenReturn(mockedSession);
        Mockito.doNothing().when(mockedSession).saveOrUpdate(Mockito.any(Cart.class));
    }

    @Then("^updateCart has been called successfully called$")
    public void updatecart_has_been_called_successfully_called() throws Throwable {
        Cart cart = new Cart();
        cartRepository.updateCart(cart);

        // verify updateCart has been called successfully
        Mockito.verify(mockedSessionFactory).getCurrentSession();
        Mockito.verify(mockedSession).saveOrUpdate(cart);
    }

    @When("^updateCart\\(\\) is called incorrectly$")
    public void updatecart_is_called_incorrectly() throws Throwable {
        BDDMockito.given(mockedSessionFactory.getCurrentSession()).willThrow(Exception.class);
    }

    @Then("^updateCart throws exception$")
    @Test(expected=Exception.class)
    public void updatecart_throws_exception() throws Throwable {
        Cart cart = new Cart();
        cartRepository.updateCart(cart);
    }

    /************************************************/
    /*
     * Test getCart()
     */
    /***********************************************/
    @Given("^expected list of carts is initialized$")
    public void expected_list_of_carts_is_initialized() throws Throwable {
        Cart cart1 = new Cart();
        cart1.setUser_id(1L);
        cart1.setCart_id(3L);
        cart1.setItems(new Items());
        cart1.setPrice(3);
        cart1.setQuantity(1);

        Cart cart2 = new Cart();
        cart2.setUser_id(1L);
        cart2.setCart_id(2L);
        cart2.setItems(new Items());
        cart2.setPrice(2);
        cart2.setQuantity(2);

        expectedListCart = new ArrayList<Cart>();
        expectedListCart.add(cart1);
        expectedListCart.add(cart2);
    }

    @When("^getCart\\(\\) is called$")
    public void getcart_is_called() throws Throwable {
        Mockito.when(mockedSessionFactory.getCurrentSession()).thenReturn(mockedSession);
        Mockito.when(mockedSession.createQuery("from Cart where user_id=:uid")).thenReturn(mockedQuery);
        Mockito.when(mockedQuery.setParameter(Mockito.eq("uid"), Mockito.anyLong())).thenReturn(mockedQuery);
        Mockito.when(mockedQuery.list()).thenReturn(expectedListCart);
    }

    @Then("^a list of carts is returned for getCart$")
    public void a_list_of_carts_is_returned_for_getCart() throws Throwable {
        List<Cart> actualListCart = cartRepository.getCart(1L);

        Assert.assertEquals(actualListCart.size(), expectedListCart.size());
        for (int x=0; x<expectedListCart.size(); x++) {
            Assert.assertEquals(actualListCart.get(x).getUser_id(), expectedListCart.get(x).getUser_id());
            Assert.assertEquals(actualListCart.get(x).getCart_id(), expectedListCart.get(x).getCart_id());
            Assert.assertEquals(actualListCart.get(x).getItems(), expectedListCart.get(x).getItems());
            Assert.assertEquals(actualListCart.get(x).getPrice(), expectedListCart.get(x).getPrice(), 1e-16);
            Assert.assertEquals(actualListCart.get(x).getQuantity(), expectedListCart.get(x).getQuantity());
        }

        // verify getCart has been called successfully
        Mockito.verify(mockedSessionFactory).getCurrentSession();
        Mockito.verify(mockedSession).createQuery("from Cart where user_id=:uid");
        Mockito.verify(mockedQuery).setParameter("uid", 1L);
        Mockito.verify(mockedQuery).list();
    }

    @Given("^expected null list of carts is initialized$")
    public void expected_null_list_of_carts_is_initialized() throws Throwable {
        expectedListCart = null;
    }

    @Then("^a list of carts is null for getCart$")
    public void a_list_of_carts_is_null_for_getCart() throws Throwable {
        List<Cart> actualListCart = cartRepository.getCart(1L);

        Assert.assertNull(actualListCart);

        // verify getCart has been called successfully
        Mockito.verify(mockedSessionFactory).getCurrentSession();
        Mockito.verify(mockedSession).createQuery("from Cart where user_id=:uid");
        Mockito.verify(mockedQuery).setParameter("uid", 1L);
        Mockito.verify(mockedQuery).list();
    }

    @Given("^expected empty list of carts is initialized$")
    public void expected_empty_list_of_carts_is_initialized() throws Throwable {
        expectedListCart = new ArrayList<Cart>();
    }

    @Then("^a list of carts is empty for getCart$")
    public void a_list_of_carts_is_empty_for_getCart() throws Throwable {
        List<Cart> actualListCart = cartRepository.getCart(1L);

        Assert.assertEquals(actualListCart.size(), expectedListCart.size());

        // verify getCart has been called successfully
        Mockito.verify(mockedSessionFactory).getCurrentSession();
        Mockito.verify(mockedSession).createQuery("from Cart where user_id=:uid");
        Mockito.verify(mockedQuery).setParameter("uid", 1L);
        Mockito.verify(mockedQuery).list();
    }

    /************************************************/
    /*
     * Test ClearCart()
     */
    /***********************************************/
    @When("^ClearCart\\(\\) is called$")
    public void clearcart_is_called() throws Throwable {
        Mockito.when(mockedSessionFactory.getCurrentSession()).thenReturn(mockedSession);
        Mockito.when(mockedSession.createQuery("delete from Cart where user_id=:uid")).thenReturn(mockedQuery);
    }

    @Then("^ClearCart has been called successfully called$")
    public void clearcart_has_been_called_successfully_called() throws Throwable {
        cartRepository.ClearCart(1L);
        Mockito.verify(mockedSessionFactory).getCurrentSession();
        Mockito.verify(mockedSession).createQuery("delete from Cart where user_id=:uid");
    }

    /************************************************/
    /*
     * Test AddtoCart()
     */
    /***********************************************/
    @When("^AddToCart\\(\\) is called for CartRepository$")
    public void addtocart_is_called_for_CartRepository() throws Throwable {
        expectedListCart = new ArrayList<Cart>();

        Mockito.when(mockedSessionFactory.getCurrentSession()).thenReturn(mockedSession);
        Mockito.when(mockedSession.createQuery("from Cart where user_id=:uid and items.item_id=:itmid")).thenReturn(mockedQuery);
        Mockito.when(mockedSession.createQuery("update Cart set quantity=:newQunty where user_id=:uid and items.item_id=:itmid")).thenReturn(mockedQuery);
        Mockito.when(mockedSession.createQuery("delete Cart where user_id=:uid and items.item_id=:itmid")).thenReturn(mockedQuery);
        Mockito.when(mockedQuery.list()).thenReturn(expectedListCart);
    }

    @Then("^AddToCart has been called successfully called for CartRepository$")
    public void addtocart_has_been_called_successfully_called_for_CartRepository() throws Throwable {
        Cart cart = new Cart();
        Items items = new Items();
        items.setItem_id(1L);
        cart.setItems(items);
        cartRepository.AddToCart(cart, 0);
        expectedListCart.add(cart);
        cartRepository.AddToCart(cart, 0);
        cartRepository.AddToCart(cart, 1);
        cartRepository.AddToCart(cart, 2);

        Mockito.verify(mockedSessionFactory, Mockito.atLeast(3)).getCurrentSession();
        Mockito.verify(mockedSession, Mockito.atLeast(2)).createQuery("from Cart where user_id=:uid and items.item_id=:itmid");
        Mockito.verify(mockedSession, Mockito.atLeast(2)).createQuery("update Cart set quantity=:newQunty where user_id=:uid and items.item_id=:itmid");
        Mockito.verify(mockedSession).createQuery("delete Cart where user_id=:uid and items.item_id=:itmid");
        Mockito.verify(mockedQuery, Mockito.atLeast(2)).list();
    }

}
