require "test_helper"

class SuppliersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @supplier = suppliers(:one)
    sign_in users(:one)
  end

  test "should get index" do
    get suppliers_url
    assert_response :success
  end

  test "should get new" do
    get new_supplier_url
    assert_response :success
  end

  test "should create supplier" do
    assert_difference("Supplier.count") do
      post suppliers_url, params: { 
        supplier: { 
          company_name: "New Unique Company", 
          email: "new@test.com", 
          phone: "1234567890" 
        } 
      }
    end

    assert_redirected_to supplier_url(Supplier.last, locale: :uk)
  end

  test "should show supplier" do
    get supplier_url(@supplier)
    assert_response :success
  end

  test "should get edit" do
    get edit_supplier_url(@supplier)
    assert_response :success
  end

  test "should update supplier" do
    patch supplier_url(@supplier), params: { 
      supplier: { 
        company_name: @supplier.company_name, 
        email: @supplier.email, 
        phone: @supplier.phone 
      } 
    }
    assert_redirected_to supplier_url(@supplier, locale: :uk)
  end

  test "should destroy supplier" do
    assert_difference("Supplier.count", -1) do
      delete supplier_url(@supplier)
    end

    assert_redirected_to suppliers_url(locale: :uk)
  end
end