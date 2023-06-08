require 'grape'
require 'json'

class Task
  attr_accessor :id, :title, :description

  def initialize(id, title, description, user_id)
    @id = id
    @title = title
    @description = description
    @user_id = user_id
  end

  def self.all
    [
      Task.new(1, 'Task 1', 'Description 1'),
      Task.new(2, 'Task 2', 'Description 2'),
      Task.new(3, 'Task 3', 'Description 3')
    ]
  end

  def self.find(id)
    all.find { |task| task.id == id.to_i }
  end

  def save
    true
  end

  def update(attributes)
    @title = attributes[:title] if attributes.key?(:title)
    @description = attributes[:description] if attributes.key?(:description)

    save
  end

  def destroy
    true
  end
end

class TaskAPI < Grape::API
  format :json

  get '/api/tasks' do
    tasks = Task.all
    tasks.to_json
  end

  get '/api/tasks/:id' do
    task = Task.find(params[:id])
    if task.nil?
      status 404
      { error: 'Task not found' }.to_json
    else
      task.to_json
    end
  end

  post '/api/tasks' do
    task = Task.new(
      params[:id].to_i,
      params[:title],
      params[:description]
    )
    if task.save
      status 201
      { message: 'Task created successfully' }.to_json
    else
      status 400
      { error: 'Failed to create task' }.to_json
    end
  end

  put '/api/tasks/:id' do
    task = Task.find(params[:id])
    if task.nil?
      status 404
      { error: 'Task not found' }.to_json
    else
      task.update(
        title: params[:title],
        description: params[:description]
      )
      { message: 'Task updated successfully' }.to_json
    end
  end

  delete '/api/tasks/:id' do
    task = Task.find(params[:id])
    if task.nil?
      status 404
      { error: 'Task not found' }.to_json
    else
      task.destroy
      { message: 'Task deleted successfully' }.to_json
    end
  end
end


app = Rack::Builder.new do
  map '/' do
    run TaskAPI
  end
end

Rack::Handler::WEBrick.run app, Port: 8080