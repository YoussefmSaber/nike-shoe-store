
import 'package:supabase_auth_ui/supabase_auth_ui.dart';

class SupabaseApi {
  static final SupabaseApi _singleton = SupabaseApi._internal();

  factory SupabaseApi() {
    return _singleton;
  }

  SupabaseApi._internal();

  final supabase = Supabase.instance.client;
}