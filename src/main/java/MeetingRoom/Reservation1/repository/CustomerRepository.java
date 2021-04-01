package MeetingRoom.Reservation1.repository;

import MeetingRoom.Reservation1.domain.Customer;

public interface CustomerRepository {
    Customer add(Customer customer);
    boolean isRegistered(String email);

}
