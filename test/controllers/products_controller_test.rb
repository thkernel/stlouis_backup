require 'test_helper'

class ProductsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @product = products(:one)
  end

  test "should get index" do
    get products_url
    assert_response :success
  end

  test "should get new" do
    get new_product_url
    assert_response :success
  end

  test "should create product" do
    assert_difference('Product.count') do
      post products_url, params: { product: { account_id: @product.account_id, bar_code: @product.bar_code, current_stock: @product.current_stock, description: @product.description, name: @product.name, product_category_id: @product.product_category_id, provider_id: @product.provider_id, reorder_threshold: @product.reorder_threshold, slug: @product.slug, status: @product.status, uid: @product.uid, unit_price: @product.unit_price } }
    end

    assert_redirected_to product_url(Product.last)
  end

  test "should show product" do
    get product_url(@product)
    assert_response :success
  end

  test "should get edit" do
    get edit_product_url(@product)
    assert_response :success
  end

  test "should update product" do
    patch product_url(@product), params: { product: { account_id: @product.account_id, bar_code: @product.bar_code, current_stock: @product.current_stock, description: @product.description, name: @product.name, product_category_id: @product.product_category_id, provider_id: @product.provider_id, reorder_threshold: @product.reorder_threshold, slug: @product.slug, status: @product.status, uid: @product.uid, unit_price: @product.unit_price } }
    assert_redirected_to product_url(@product)
  end

  test "should destroy product" do
    assert_difference('Product.count', -1) do
      delete product_url(@product)
    end

    assert_redirected_to products_url
  end
end
