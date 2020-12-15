import 'Option.dart';
import 'Question.dart';

class Definition {
  int _nombreDeQuestion = 0;
  int _nombreOption = 0;

  List<Reponse> _listeOption= [
    Reponse( 'Je dois lui céder le passage' , 'Je peux lui céder le passage /R ' , 'Lui céder le passage est une infraction' ) ,
    Reponse( 'chute de pierre a 150 metres ' , 'projection de gravillons a 200 metre  /R' , 'null' ) ,
    Reponse( 'Oui/R' , 'Non , ce vehicule doit se rabattre et me ceder le passage ' , 'Chute de pierres a 200 mettre ' ) ,
    Reponse( 'Oui/R' , ' Oui si mon vehicule mesure moins de 1 , 65 metres ', 'Non'    ) ,
    Reponse( 'Oui' , ' Oui si  je m ecarte d un metre au moins   ' , 'Non /R' ) ,
    Reponse( 'Oui' , ' Oui si le airbag est désactivé /R ' , 'Non' ) ,




  ] ;
  List<Question> _listeDefinition = [
    Question(' Ce camion désire changer de bande ', false , true , false , 'non' ,
        ' Changer de bande est une manoeuvre '
        'Vous pouvez le laisser passer mais évitez de freiner brusquement'),


    Question('Les vehicules de gauche sont stationnes . '
        'je dois ceder le passage au vehicule de police venant en sens inverse '
  , false , true  , null , 'oui' , 'Sans sirène, ce '
            'véhicule n a pas priorité. Comme les'
            ' obstacles se trouvent de son côté, il doit vous céder le passage.'   ),


    Question(' ce signal routier signifie  ', true , false , false , 'non' , ' Chute de pierres à 150 mètres, sur une distance de 200 mètres.'),

    Question('je peux circuler a 120 km/h' , true ,  false , null , 'non' ,
        'Le muret qui sépare les deux sens de circulation '
            'vous autorise à circuler à 120 km/h.' ) ,

  Question(' puis-je stationner a droite devant la voiture bleue '
  , false , false , true , 'oui' , '  tous depassement sont interdits sur un dispositif sureleve'),

    Question(' Je peux placer un siège dos à la route à lavant '
  , false , true , false , 'oui' , ' Le déploiement de l airbag risque d écraser l enfant entre le siège et le dossier.'),

  ] ;


  String getOptionA() {
    return _listeOption[_nombreOption].option_A;
  }
  String getOptionB() {
    return _listeOption[_nombreOption].option_B;
  }
  String getOptionC() {
    return _listeOption[_nombreOption].option_C;
  }


  String getQuestionText() {
    return _listeDefinition[_nombreDeQuestion].questionText;
  }

  bool getBonneReponseA() {

    return _listeDefinition[_nombreDeQuestion].reponse_A;
  }
  bool getBonneReponseB() {


    return _listeDefinition[_nombreDeQuestion].reponse_B;
  }
  bool getBonneReponseC() {


    return _listeDefinition[_nombreDeQuestion].reponse_C;
  }


  String getFauteGrave() {


    return _listeDefinition[_nombreDeQuestion].fauteGrave;
  }

  String getExplication() {

    return _listeDefinition[_nombreDeQuestion].explication;
  }




  void questionSuivante() {
    if (_nombreDeQuestion <= _listeDefinition.length - 1) {
      _nombreDeQuestion++;
    }
  }

  void optionSuivante() {
    if (_nombreOption <= _listeOption.length - 1) {
      _nombreOption++;
    }
  }

  bool estFini() {
    if (_nombreDeQuestion >= _listeDefinition.length - 1) {

      print('Now returning true');
      return true;

    } else {
      return false;
    }
  }

  void reset() {
    _nombreDeQuestion = 0;
    _nombreOption = 0 ;
  }





}
