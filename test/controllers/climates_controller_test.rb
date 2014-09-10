require 'test_helper'

class ClimatesControllerTest < ActionController::TestCase
  setup do
    @climate = climates(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:climates)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create climate" do
    assert_difference('Climate.count') do
      post :create, climate: { clouds: @climate.clouds, humidity: @climate.humidity, pressure: @climate.pressure, temperature: @climate.temperature, temperature_max: @climate.temperature_max, temperature_min: @climate.temperature_min, wind_degrees: @climate.wind_degrees, wind_speed: @climate.wind_speed }
    end

    assert_redirected_to climate_path(assigns(:climate))
  end

  test "should show climate" do
    get :show, id: @climate
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @climate
    assert_response :success
  end

  test "should update climate" do
    patch :update, id: @climate, climate: { clouds: @climate.clouds, humidity: @climate.humidity, pressure: @climate.pressure, temperature: @climate.temperature, temperature_max: @climate.temperature_max, temperature_min: @climate.temperature_min, wind_degrees: @climate.wind_degrees, wind_speed: @climate.wind_speed }
    assert_redirected_to climate_path(assigns(:climate))
  end

  test "should destroy climate" do
    assert_difference('Climate.count', -1) do
      delete :destroy, id: @climate
    end

    assert_redirected_to climates_path
  end
end
