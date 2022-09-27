abstract class BaseModel<T> {
  BaseModel();

  String toJson();

  T clone();

  T cloneWithMutation(Map<String, dynamic> mutation);
}
