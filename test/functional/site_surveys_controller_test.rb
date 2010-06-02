require 'test_helper'

class SiteSurveysControllerTest < ActionController::TestCase
  context "index action" do
    should "render index template" do
      get :index
      assert_template 'index'
    end
  end
  
  context "show action" do
    should "render show template" do
      get :show, :id => SiteSurvey.first
      assert_template 'show'
    end
  end
  
  context "new action" do
    should "render new template" do
      get :new
      assert_template 'new'
    end
  end
  
  context "create action" do
    should "render new template when model is invalid" do
      SiteSurvey.any_instance.stubs(:valid?).returns(false)
      post :create
      assert_template 'new'
    end
    
    should "redirect when model is valid" do
      SiteSurvey.any_instance.stubs(:valid?).returns(true)
      post :create
      assert_redirected_to site_survey_url(assigns(:site_survey))
    end
  end
  
  context "edit action" do
    should "render edit template" do
      get :edit, :id => SiteSurvey.first
      assert_template 'edit'
    end
  end
  
  context "update action" do
    should "render edit template when model is invalid" do
      SiteSurvey.any_instance.stubs(:valid?).returns(false)
      put :update, :id => SiteSurvey.first
      assert_template 'edit'
    end
  
    should "redirect when model is valid" do
      SiteSurvey.any_instance.stubs(:valid?).returns(true)
      put :update, :id => SiteSurvey.first
      assert_redirected_to site_survey_url(assigns(:site_survey))
    end
  end
  
  context "destroy action" do
    should "destroy model and redirect to index action" do
      site_survey = SiteSurvey.first
      delete :destroy, :id => site_survey
      assert_redirected_to site_surveys_url
      assert !SiteSurvey.exists?(site_survey.id)
    end
  end
end
