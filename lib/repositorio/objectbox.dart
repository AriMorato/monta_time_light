import 'package:path/path.dart' as p;
import 'package:path_provider/path_provider.dart';
/*Futuramente pode ser necessario recriar esses 
arquivos na pasta DATA, na raiz do projeto. Para 
SINCRONIZACAO de dados da erro se estiverem em outro endereco*/
import 'package:monta_time_light/data/objectbox.g.dart';

class ObjectBox {
  final Store store;

  ObjectBox._(this.store);
  // factory ObjectBox(Store store){

  //   if(store.directoryPath.)
  //   return
  // }

  static Future<ObjectBox> create() async {
    final dir = await getApplicationDocumentsDirectory();

    final store =
        await openStore(directory: p.join(dir.path, 'montaTime_data'));

    return ObjectBox._(store);
  }
}
