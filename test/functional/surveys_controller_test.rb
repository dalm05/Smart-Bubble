require 'test_helper'

class SurveysControllerTest < ActionController::TestCase
  setup do
    @survey = surveys(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:surveys)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create survey" do
    assert_difference('Survey.count') do
      post :create, survey: { course_id: @survey.course_id, instructor_id: @survey.instructor_id, question_a: @survey.question_a, question_b: @survey.question_b, question_c: @survey.question_c, question_d: @survey.question_d, question_e: @survey.question_e, question_f: @survey.question_f, question_g: @survey.question_g, question_h: @survey.question_h, question_i: @survey.question_i, question_j: @survey.question_j, question_k: @survey.question_k, question_l: @survey.question_l, response_a: @survey.response_a, response_b: @survey.response_b, response_c: @survey.response_c, response_d: @survey.response_d, response_e: @survey.response_e, response_f: @survey.response_f, response_g: @survey.response_g, response_h: @survey.response_h, response_i: @survey.response_i, response_k: @survey.response_k, response_l: @survey.response_l, section_id: @survey.section_id, survey_id: @survey.survey_id }
    end

    assert_redirected_to survey_path(assigns(:survey))
  end

  test "should show survey" do
    get :show, id: @survey
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @survey
    assert_response :success
  end

  test "should update survey" do
    put :update, id: @survey, survey: { course_id: @survey.course_id, instructor_id: @survey.instructor_id, question_a: @survey.question_a, question_b: @survey.question_b, question_c: @survey.question_c, question_d: @survey.question_d, question_e: @survey.question_e, question_f: @survey.question_f, question_g: @survey.question_g, question_h: @survey.question_h, question_i: @survey.question_i, question_j: @survey.question_j, question_k: @survey.question_k, question_l: @survey.question_l, response_a: @survey.response_a, response_b: @survey.response_b, response_c: @survey.response_c, response_d: @survey.response_d, response_e: @survey.response_e, response_f: @survey.response_f, response_g: @survey.response_g, response_h: @survey.response_h, response_i: @survey.response_i, response_k: @survey.response_k, response_l: @survey.response_l, section_id: @survey.section_id, survey_id: @survey.survey_id }
    assert_redirected_to survey_path(assigns(:survey))
  end

  test "should destroy survey" do
    assert_difference('Survey.count', -1) do
      delete :destroy, id: @survey
    end

    assert_redirected_to surveys_path
  end
end
