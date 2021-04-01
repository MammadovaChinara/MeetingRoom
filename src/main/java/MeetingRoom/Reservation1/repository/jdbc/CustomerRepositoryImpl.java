package MeetingRoom.Reservation1.repository.jdbc;

import MeetingRoom.Reservation1.domain.Customer;
import MeetingRoom.Reservation1.repository.CustomerRepository;
import MeetingRoom.Reservation1.repository.jdbc.mapper.CustomerRowMapper;
import org.springframework.jdbc.core.namedparam.MapSqlParameterSource;
import org.springframework.jdbc.core.namedparam.NamedParameterJdbcTemplate;
import org.springframework.jdbc.support.GeneratedKeyHolder;
import org.springframework.jdbc.support.KeyHolder;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

@Repository
public class CustomerRepositoryImpl implements CustomerRepository {

    private NamedParameterJdbcTemplate namedParameterJdbcTemplate;
    private CustomerRowMapper customerRowMapper;

    public CustomerRepositoryImpl(NamedParameterJdbcTemplate namedParameterJdbcTemplate, CustomerRowMapper customerRowMapper) {
        this.namedParameterJdbcTemplate = namedParameterJdbcTemplate;
        this.customerRowMapper = customerRowMapper;
    }


    @Transactional
    @Override
    public Customer add(Customer customer) {
        String sql = "insert into customer (name, surname, username, email, password) values (:name, :surname, :username, :email, :password)";
        MapSqlParameterSource parameterSource = new MapSqlParameterSource();
        KeyHolder keyHolder = new GeneratedKeyHolder();

        namedParameterJdbcTemplate.update(sql, parameterSource, keyHolder);

        return customer;
    }

    @Override
    public boolean isRegistered(String email) {
        Customer customer = new Customer();
        if (!email.equals(customer.getEmail())) {
            return true;
        } else {
            System.out.println("This email only registered");
            return true;
        }
    }
}
