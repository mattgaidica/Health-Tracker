class PagesController < ApplicationController
  def index
  end

  def gym
    if !Gym.last.nil? && Gym.last.created_at == Gym.last.updated_at
      Gym.last.touch
    else
      Gym.create
    end
    redirect_to root_path
  end

  def sleep
    if !Sleep.last.nil? && Sleep.last.created_at == Sleep.last.updated_at
      Sleep.last.touch
    else
      Sleep.create
    end
    redirect_to root_path
  end

  def vitamins
    Vitamin.create
    redirect_to root_path
  end

  def caffeine
    Caffeine.create
    redirect_to root_path
  end

  def alcohol
    Alcohol.create
    redirect_to root_path
  end
end
