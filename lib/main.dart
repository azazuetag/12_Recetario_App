import 'package:flutter/material.dart';

void main() {
  runApp(new MaterialApp(home: new Application()));
}

class Application extends StatefulWidget {
  @override
  _ApplicationState createState() => new _ApplicationState();
}

class _ApplicationState extends State<Application> {

  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: new AppBar(title: Text( "Recetario de Postres")),
        body:
        Container(
          child: new ListView(
            children: <Widget>[

              new Card(
                child: new ListTile(
                  leading: Icon(Icons.eject),
                  title: Text('Pastel de Piña',style: TextStyle(color: Colors.blue, fontSize: 20.0)),
                  onTap: (){
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => PastelPina()),
                    );
                  },
                ),
              ),

              new Card(
                child: new ListTile(
                  leading: Icon(Icons.add_to_queue),
                  title: Text('Pastel de Chocolate',style: TextStyle(color: Colors.blue, fontSize: 20.0)),
                  onTap: (){
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => PastelChocolate()),
                    );
                  },
                ),
              ),
              new Card(
                child: new ListTile(
                  leading: Icon(Icons.access_time),
                  title: Text('Pastel de Fresa',style: TextStyle(color: Colors.blue, fontSize: 20.0)),
                  onTap: (){
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => PastelPina()),
                    );
                  },
                ),
              ),
            ],
          ),
        )
    );
  }
}

//----------------------------Pastel de Fresa-------------------------------------
class PastelFresa extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // IMplementando la fila del Titulo
    Widget titleSection = Container(
      padding: const EdgeInsets.all(32.0),
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  padding: const EdgeInsets.only(bottom: 8.0),
                  child: Text(
                    'Receta pastel de fresa',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Text(
                  'Receta de: Rick Brown',
                  style: TextStyle(
                    color: Colors.grey[500],
                  ),
                ),
              ],
            ),
          ),
          Icon(
            Icons.star,
            color: Colors.red[500],
          ),
          Text('52'),
        ],
      ),
    );

// Implementando función para las columnas de los botones
    Column buildButtonColumn(IconData icon, String label) {
      Color color = Theme.of(context).primaryColor;

      return Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(icon, color: color),
          Container(
            margin: const EdgeInsets.only(top: 8.0),
            child: Text(
              label,
              style: TextStyle(
                fontSize: 12.0,
                fontWeight: FontWeight.w400,
                color: color,
              ),
            ),
          ),
        ],
      );
    }
    // Crea la fila para el boton de Regresar
    Widget buttonSection = Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          new RaisedButton(onPressed: (){
            Navigator.pop(context);
          },
          child: Text("Regresar")),
        ],
      ),
    );

// Defines la sección del parrafo de texto
    Widget textSection = Container(
      padding: const EdgeInsets.all(32.0),
      child: Text(
        '''
1.Precalienta el horno a 180 °C (350 °F). Engrasa y enharina un molde rosca de 9 centímetros de diámetro.
2.Coloca la mantequilla y la leche en una cacerola pequeña. Entibia a fuego moderado hasta que la mantequilla se derrita, evitando que hierva.
3.Aparte, bate los huevos con 1/2 cucharadita de sal y 2 tazas de azúcar en un tazón grande. Agrega la leche tibia y la vainilla.
4.Mezcla la harina con el bicarbonato e incorpora al batido anterior, mezclando con una espátula hasta tener una masa uniforme. Vierte dentro del molde rosca.
5.Hornea el pastel durante 55 minutos en el horno precalentado o hasta que pase la prueba del palillo. Retira del horno y deja enfriar en el molde durante 15 minutos, luego coloca sobre una rejilla enfriadora para que se enfríe completamente.
        ''',
        softWrap: true,
      ),
    );

    return MaterialApp(
      title: 'Pastel de Fresa',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Receta Pastel de Fresa'),
          backgroundColor: Colors.blue,
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.refresh),
            )
          ],
        ),
        // Implementa la sección de la imagen
        body: ListView(
          children: [
            Image.asset(
              'images/PastelFresa.jpg',
              width: 600.0,
              height: 240.0,
              fit: BoxFit.cover,
            ),
            titleSection,
            buttonSection,
            textSection,
          ],
        ),
      ),
    );
  }
}
//----------------------------Pastel de Chocolate-------------------------------------
class PastelChocolate extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // IMplementando la fila del Titulo
    Widget titleSection = Container(
      padding: const EdgeInsets.all(32.0),
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  padding: const EdgeInsets.only(bottom: 8.0),
                  child: Text(
                    'Receta pastel de chocolate',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Text(
                  'Receta de: SUGAR.PLUM.FAIRY',
                  style: TextStyle(
                    color: Colors.grey[500],
                  ),
                ),
              ],
            ),
          ),
          Icon(
            Icons.star,
            color: Colors.red[500],
          ),
          Text('52'),
        ],
      ),
    );

// Implementando función para las columnas de los botones
    Column buildButtonColumn(IconData icon, String label) {
      Color color = Theme.of(context).primaryColor;

      return Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(icon, color: color),
          Container(
            margin: const EdgeInsets.only(top: 8.0),
            child: Text(
              label,
              style: TextStyle(
                fontSize: 12.0,
                fontWeight: FontWeight.w400,
                color: color,
              ),
            ),
          ),
        ],
      );
    }
    // Crea la fila para el boton de Regresar
    Widget buttonSection = Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          new RaisedButton(onPressed: (){
            Navigator.pop(context);
          },
              child: Text("Regresar")),
        ],
      ),
    );

// Defines la sección del parrafo de texto
    Widget textSection = Container(
      padding: const EdgeInsets.all(32.0),
      child: Text(
        '''
1. Tritura las galletas Marías y mézclalas con la mantequilla derretida y 1 cucharada de azúcar. Presiona la mezcla en el fondo de un molde de 18 centímetros de diámetro y refrigera mientras preparas el relleno.
2. Bate la crema hasta formar picos suaves y agrega el chocolate derretido, luego la cocoa disuelta. Mezcla bien y reserva.
3. Bate el queso crema con el resto del azúcar. Envuelve en la mezcla de crema y chocolate y mezcla bien.
4. Distribuye la mezcla uniformemente sobre la base de galletas Marías. Congela durante 1 hora y luego refrigera durante 30 minutos antes de servir.
        ''',
        softWrap: true,
      ),
    );

    return MaterialApp(
      title: 'Pastel de Chocolate',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Receta Pastel de Chocolate'),
          backgroundColor: Colors.blue,
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.refresh),
            )
          ],
        ),
        // Implementa la sección de la imagen
        body: ListView(
          children: [
            Image.asset(
              'images/PastelChocolate.jpg',
              width: 600.0,
              height: 240.0,
              fit: BoxFit.cover,
            ),
            titleSection,
            buttonSection,
            textSection,
          ],
        ),
      ),
    );
  }
}
//----------------------------Área de Piña-------------------------------------
class PastelPina extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // IMplementando la fila del Titulo
    Widget titleSection = Container(
      padding: const EdgeInsets.all(32.0),
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  padding: const EdgeInsets.only(bottom: 8.0),
                  child: Text(
                    'Receta pastel de piña',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Text(
                  'Receta de: Cathy',
                  style: TextStyle(
                    color: Colors.grey[500],
                  ),
                ),
              ],
            ),
          ),
          Icon(
            Icons.star,
            color: Colors.red[500],
          ),
          Text('52'),
        ],
      ),
    );

// Implementando función para las columnas de los botones
    Column buildButtonColumn(IconData icon, String label) {
      Color color = Theme.of(context).primaryColor;

      return Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(icon, color: color),
          Container(
            margin: const EdgeInsets.only(top: 8.0),
            child: Text(
              label,
              style: TextStyle(
                fontSize: 12.0,
                fontWeight: FontWeight.w400,
                color: color,
              ),
            ),
          ),
        ],
      );
    }
    // Crea la fila para el boton de Regresar
    Widget buttonSection = Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          new RaisedButton(onPressed: (){
            Navigator.pop(context);
          },
              child: Text("Regresar")),
        ],
      ),
    );

// Defines la sección del parrafo de texto
    Widget textSection = Container(
      padding: const EdgeInsets.all(32.0),
      child: Text(
        '''
1. Precalienta el horno a 170 ºC (325 ºF).
2. Derrite 1/2 taza de mantequilla en un sartén de hierro al fuego más bajo (si lo deseas puedes utilizar otro tipo de sartén, siempre y cuando sea pesado y apto para el horno). Retira del fuego y espolvorea el azúcar morena sobre todo el fondo de la cazuela. Acomoda sobre el azúcar las rebanadas de piña necesarias para cubrir el fondo (sin encimar). Distribuye las cerezas entre las rebanadas de la piña.
3. Cierne la harina junto con el polvo para hornear y la sal. Reserva.
4. Separa los huevos en dos tazones. Bate las claras en un tazón grande hasta alcanzar el punto de nieve (cuando formen picos suaves). Agrega poco a poco el azúcar estándar, batiendo muy bien después de cada adición. Sigue batiendo hasta que las claras formen picos firmes al levantarlas con las aspas de la batidora. Aparte, bate las yemas en un tazón pequeño, con batidora a velocidad alta, hasta que estén muy espesas y de un color amarillo pálido.
5. Con ayuda de un batidor de globo o espátula de silicón, envuelve muy suavemente las yemas y los polvos cernidos en las claras batidas, utilizando movimientos giratorios de arriba hacia abajo. Envuelve 1 cucharada de mantequilla derretida y el concentrado de almendra. Vierte la masa sobre piña en el sartén.
6. Hornea el pastel en el horno precalentado de 30 a 35 minutos, o hasta que pase la prueba del palillo. Pasa un cuchillo por las orillas del pastel para separarlo del sartén. Deja dentro del sartén 5 minutos, luego voltea sobre un platón y retira el sartén.
        ''',
        softWrap: true,
      ),
    );

    return MaterialApp(
      title: 'Pastel de Piña',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Receta Pastel de Piña'),
          backgroundColor: Colors.blue,
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.refresh),
            )
          ],
        ),
        // Implementa la sección de la imagen
        body: ListView(
          children: [
            Image.asset(
              'images/PastelPina.jpg',
              width: 600.0,
              height: 240.0,
              fit: BoxFit.cover,
            ),
            titleSection,
            buttonSection,
            textSection,
          ],
        ),
      ),
    );
  }
}