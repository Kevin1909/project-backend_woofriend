
import '../entities/user.dart';

abstract class AuthRepository {

  Future<User> login( String email, String password );
  Future<User> register( String email, String password, String name, String phone, String ubication, List<String> roles );
  Future<User> checkAuthStatus( String token );

}

