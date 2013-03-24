# -*- encoding : utf-8 -*-
class PageController < ApplicationController
  before_filter :setup  #so we can assume that products are available

  def home
  end

  def about_us
    #flash[:notice]  = "nie można tego zrobić"
    @nazwisko = params[:nazwisko]
    @email = params[:email]
    #TODO: Remember to validate the email
    if  params[:commit]
      if @nazwisko.nil? or @nazwisko.empty?
        flash.now[:error] =  "Błąd, wielki błąd!!. Imie nie może być puste".html_safe
      end
    end

    if  params[:commit]
      if @email.nil? || @email.empty?
        flash.now[:error] +=  "</br>Błąd, wielki błąd!!. email nie może być pusty".html_safe
      end
    end


    @age = params[:age]
    @products = %w(skis poles mittens)
    @selected_product = params[:produkty]
    @selected_product2 = params[:produkty2]
    @food = params[:food]
  end

  def recipes
  end

  def products
  end

  def articles
  end

  def calendar
    @year = params[:year]
    @month = params[:month]
    @my_time = Time.now
    #@name = "Norbert"
    @products = %w(bulka kupa gowno lalka)   # = ["bułka", "kupa", "gowno", "lalka"]

  end

  def blog
  end

  def login
  end

  def setup
    @products = {1 => 'cos', 2 => 'cos2', 3 => 'cos3', 4 => 'cos4', 5 => 'cos5'}
    @cosiki = %w{ 'VISA Mastercard' Switch 'AmericanoExpresso'}
    #@payments = {'Visa' => 1, 'Mastercard' => 2, 'Switch' => 3}
    @payments = %w{'Visa'  'Mastercard'  'Switch' }
  end
end
