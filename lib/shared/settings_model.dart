// abstract class GameSettings {
//   dynamic idGame;
//   dynamic maxPlayers;
//   dynamic minPlayers;
//   dynamic maxSteps;
//   dynamic minSteps;
//   dynamic nameSteps;
//   dynamic timeOfMatchInPointsOrTime;
//   dynamic durationOfSteps;
//   dynamic intervalBetweenSteps;
//   dynamic ifPeriodStepsInTimeIsRunningOrPlayer;

//   GameSettings(
//       this.idGame,
//       this.maxPlayers,
//       this.minPlayers,
//       this.maxSteps,
//       this.minSteps,
//       this.nameSteps,
//       this.timeOfMatchInPointsOrTime,
//       this.durationOfSteps,
//       this.intervalBetweenSteps,
//       this.ifPeriodStepsInTimeIsRunningOrPlayer);

//   Map<String, dynamic> settingsToMap(
//     idGame,
//     maxPlayers,
//     minPlayers,
//     maxSteps,
//     minSteps,
//     nameSteps,
//     timeOfMatchInPointsOrTime,
//     durationOfSteps,
//     intervalBetweenSteps,
//     ifPeriodStepsInTimeIsRunningOrPlayer,
//   ) {
//     Map<String, dynamic> settings = {
//       'Game': idGame ??= 1,
//       'Máximo_de_Jogadores_por_Time': maxPlayers ??= 6,
//       'Mínimo_de_Jogadores_por_Time': minPlayers ??= 2,
//       'Número_Maximo_de_Etapas': maxSteps ??= 2,
//       'Número_Minimo_de_Etapas': minSteps ??= 1,
//       'Título_das_Etapas': nameSteps ??= 'Etapa',
//       'Medição_das_etapas_por:_Tempo_ou_Pontos?': timeOfMatchInPointsOrTime ??=
//           0,
//       'Duração_das_Etapas': durationOfSteps ??= 20,
//       'Tempo_de_Intervalo': intervalBetweenSteps ??= 5,
//       'Medição_de_tempo_de_jogo:_Corrigo_ou_Jogado':
//           ifPeriodStepsInTimeIsRunningOrPlayer ??= 0,
//     };
//     return settings;
//   }
// }

// class FutebolSocietySettings implements GameSettings {
//   dynamic winnerStayOnTheField;
//   dynamic additionalTime;
//   //Map<String,dynamic>? settingsSoccerSociety;

//   FutebolSocietySettings(
//       {int? idGame,
//       int? maxPlayers,
//       int? minPlayers,
//       int? maxSteps,
//       int? minSteps,
//       String? nameSteps,
//       bool? timeOfMatchInPointsOrTime,
//       int? durationOfSteps,
//       int? intervalBetweenSteps,
//       bool? ifPeriodGameInTimeIsRunningOrPlayer,
//       bool? winnerStayOnTheField,
//       bool? additionalTime})
//       //: super(
//           idGame,
//           maxPlayers,
//           minPlayers,
//           maxSteps,
//           minSteps,
//           nameSteps,
//           timeOfMatchInPointsOrTime,
//           durationOfSteps,
//           intervalBetweenSteps,
//           ifPeriodGameInTimeIsRunningOrPlayer,
//         );
  
//   @override
//   Map<String, dynamic> settingsToMap(
//       idGame,
//       maxPlayers,
//       minPlayers,
//       maxSteps,
//       minSteps,
//       nameSteps,
//       timeOfMatchInPointsOrTime,
//       durationOfSteps,
//       intervalBetweenSteps,
//       ifPeriodStepsInTimeIsRunningOrPlayer,
//       winnerStayOnThe,
//       additionalTime
//       ) {
    
//     Map<String, dynamic> settings = {
//       'Game': idGame ??= 1,
//       'Máximo_de_Jogadores_por_Time': maxPlayers ??= 6,
//       'Mínimo_de_Jogadores_por_Time': minPlayers ??= 2,
//       'Número_Maximo_de_Etapas': maxSteps ??= 2,
//       'Número_Minimo_de_Etapas': minSteps ??= 1,
//       'Título_das_Etapas': nameSteps ??= 'Etapa',
//       'Medição_das_etapas_por:_Tempo_ou_Pontos?': timeOfMatchInPointsOrTime ??=
//           0,
//       'Duração_das_Etapas': durationOfSteps ??= 20,
//       'Tempo_de_Intervalo': intervalBetweenSteps ??= 5,
//       'Medição_de_tempo_de_jogo:_Corrigo_ou_Jogado':
//           ifPeriodStepsInTimeIsRunningOrPlayer ??= 0,
//     };

//     settings['Vencedor_permance_na_quadra?'] = winnerStayOnTheField ??= 0;
//     settings['Prorrogação?'] = additionalTime ??= 0;

//     return settings;
//   }
// }
