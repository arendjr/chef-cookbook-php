#
# Author::  Joel Wurtz (<jwurtz@jolicode.com>)
# Cookbook Name:: php
#
pkg = case node["platform_family"]
      when "rhel", "fedora" then 'php-dom'
      else nil # available by default
      end

package pkg unless pkg.nil?