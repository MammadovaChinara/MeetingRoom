package MeetingRoom.Reservation1.domain;

import lombok.Data;

@Data
public class Customer {
    private long id;
    private String name;
    private String surname;
    private String username;
    private String email;
    private String password;
}
