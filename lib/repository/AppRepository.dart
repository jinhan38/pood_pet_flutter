import 'package:pet/repository/CartRepository.dart';
import 'package:pet/repository/CommonRepository.dart';
import 'package:pet/repository/GoodsRepository.dart';
import 'package:pet/repository/base/BaseRepository.dart';

import 'HomeRepository.dart';
import 'OrderRepository.dart';
import 'PetRepository.dart';
import 'UserRepository.dart';

class AppRepository extends BaseRepository {

  CartRepository cartRepository = CartRepository();
  CommonRepository commonRepository = CommonRepository();
  GoodsRepository goodsRepository = GoodsRepository();
  HomeRepository homeRepository = HomeRepository();
  OrderRepository orderRepository = OrderRepository();
  PetRepository petRepository = PetRepository();
  UserRepository userRepository = UserRepository();

}
