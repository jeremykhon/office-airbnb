class PagesController < ApplicationController
  def my_reservations
    @reservations = Reservation.where(user: current_user)
  end

  def my_offices
    @office_spaces = OfficeSpace.where(owner: current_user)
  end
end
