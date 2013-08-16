#
# Cookbook Name:: mouse
# Recipe:: default
#
# Copyright 2013, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

mouse "Itchy" do
  action :say
  phrase "squeak"
  tail false
end

mouse "Mighty Mouse" do
  phrase "Here I come to save the day!"
  tail true
end