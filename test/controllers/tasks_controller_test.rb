require 'test_helper'

class TasksControllerTest < ActionController::TestCase
  setup do
    @task = tasks(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:tasks)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create task" do
    assert_difference('Task.count') do
      post :create, task: { completed_hours: @task.completed_hours, dependencies: @task.dependencies, description: @task.description, estimated_hours: @task.estimated_hours, name: @task.name, owner: @task.owner, status: @task.status, status_indicator: @task.status_indicator, story_id: @task.story_id, todo_hours: @task.todo_hours }
    end

    assert_redirected_to task_path(assigns(:task))
  end

  test "should show task" do
    get :show, id: @task
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @task
    assert_response :success
  end

  test "should update task" do
    patch :update, id: @task, task: { completed_hours: @task.completed_hours, dependencies: @task.dependencies, description: @task.description, estimated_hours: @task.estimated_hours, name: @task.name, owner: @task.owner, status: @task.status, status_indicator: @task.status_indicator, story_id: @task.story_id, todo_hours: @task.todo_hours }
    assert_redirected_to task_path(assigns(:task))
  end

  test "should destroy task" do
    assert_difference('Task.count', -1) do
      delete :destroy, id: @task
    end

    assert_redirected_to tasks_path
  end
end
