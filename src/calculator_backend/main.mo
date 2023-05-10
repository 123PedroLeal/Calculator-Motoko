import Int "mo:base/Int";
import Float "mo:base/Float";
actor Calculate
{
  // 1. Variable mutable llamada counter de tipo Float que va a almacenar los resultados de las operaciones.
  var counter : Float = 0;

  // 2. Implementar la funcion add que acepta un valor x de tipo Float y realiza una suma.
  public func add(x: Float) : async Float
  {
    counter := counter + x; 
    return counter;
  };

  // 2. Implementar la funcion sub que acepta un valor x de tipo Float y realiza una resta.
  public func sub(x: Float) : async Float
  {
    counter:= counter - x; 
    return counter;
  };

  // 3. Implementar la funcion mul que acepta un valor x de tipo Float y realiza una multiplicación.
  public func mul(x: Float) : async Float
  {
    counter:= counter * x; 
    return counter;
  };

  // 4. Implementar la funcion div que acepta un valor x de tipo Float y realiza una división.
  // Nota: El signo de interrogación "?" antes del tipo de dato es que acepta valores nulos.
  public func div(x: Float) : async ?Float
  {
    if(x == 0)
    {
      return null;
    } 
    else
    {
      counter := counter / x;
      return ?counter; 
    }
  };

  // 5. Implementar la funcion reset que no recibe valores y hace que el valor de counter sea 0.
  public func reset() : async Float
  {
    if(counter : Float != 0)
      counter:= counter - counter;
      return counter;
  };

  // 6. Implementar la funcion see que no recibe valores y retorna el valor de counter.
  public func see() : async Float
  {
    return counter;
  };

  // 7. Implementar la funcion power que acepta un valor x de tipo Float y realiza una potencia con ese valor x.
  public func power(x: Float) : async Float 
  {
    counter := counter **x; 
    return counter;
  };

  // 8. Implementar la funcion sqrt que no recibe valores y retorna la raiz cuadrada del valor de counter.
  public func sqrt() : async Float 
  {
    counter := counter ** 0.5;
    return counter;
  };

  // 9. Implementar la funcion floor que no recibe valores y retorna el numero entero que sea menor o igual a counter.
  public func floor() : async Float 
  {
    counter := (counter - counter % 1.0);
    return counter;
  }
};
