require 'test_helper'

class TrainsControllerTest < ActionController::TestCase
  setup do
    @train = trains(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:trains)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create train" do
    assert_difference('Train.count') do
      post :create, train: { disability_access: @train.disability_access, folding_tables: @train.folding_tables, food_service: @train.food_service, luggage_storage: @train.luggage_storage, max_speed: @train.max_speed, model: @train.model, no_of_seats: @train.no_of_seats, no_of_toilets: @train.no_of_toilets, reclining_seats: @train.reclining_seats, vending_machines: @train.vending_machines }
    end

    assert_redirected_to train_path(assigns(:train))
  end

  test "should show train" do
    get :show, id: @train
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @train
    assert_response :success
  end

  test "should update train" do
    patch :update, id: @train, train: { disability_access: @train.disability_access, folding_tables: @train.folding_tables, food_service: @train.food_service, luggage_storage: @train.luggage_storage, max_speed: @train.max_speed, model: @train.model, no_of_seats: @train.no_of_seats, no_of_toilets: @train.no_of_toilets, reclining_seats: @train.reclining_seats, vending_machines: @train.vending_machines }
    assert_redirected_to train_path(assigns(:train))
  end

  test "should destroy train" do
    assert_difference('Train.count', -1) do
      delete :destroy, id: @train
    end

    assert_redirected_to trains_path
  end
end
