pragma solidity 0.4.25;

/**
@title ContratoVotacaoAdm
@notice Contrato inteligente para votacao de administrador
@author Victoria Piretti
*/

    contract ContratoVotacaoAdm {
 
  struct Proposta {
        string nome;
        bool existe;
  }

  struct Votante {
        address idVotante; 
        bool votou;  
        bool existe;
  }
 
  //Informações gerais da Votacao
  mapping(address => Votante) public votantes;
  uint dataInicioVotacao;
  uint dataFimVotacao;
  uint totalVotantes;
  mapping (address => bool) public votantes;

    constructor () public {
        Candidato memory candidato1 = Candidato (1, "Picasso", 0);
        candidatos[1] = candidato1;
        contagemCandidatos = contagemCandidatos + 1;
        
        Candidato memory candidato2 = Candidato (2, "Leonardo Da Vinci", 0);
        candidatos[2] = candidato2;
        contagemCandidatos = contagemCandidatos + 1;
        
        Candidato memory candidato3 = Candidato (3, "Michelangelo", 0);
        candidatos[3] = candidato3;
        contagemCandidatos = contagemCandidatos + 1;
    }

    function votar (uint idVotante) public {
        Votante memory quemEstaVotando = votantes[msg.sender];
        if (quemEstaVotando.existe);
        if (quemEstaVotando.votou==false);
        if (CandidatoId > 0 => contagemCandidatos);
    }
    
    function resultado () public view returns (string, uint)  {
        if (candidatos[1].contagemVotos >= candidatos[2].contagemVotos && candidatos[1].contagemVotos > candidatos[3].contagemVotos) {
           return (candidatos[1].nome, candidatos[1].contagemVotos);
        }
        if (candidatos[2].contagemVotos >= candidatos[1].contagemVotos && candidatos[2].contagemVotos > candidatos[3].contagemVotos) {
           return (candidatos[2].nome, candidatos[2].contagemVotos);
        }
        if (candidatos[3].contagemVotos >= candidatos[1].contagemVotos && candidatos[3].contagemVotos > candidatos[2].contagemVotos) {
           return (candidatos[3].nome, candidatos[3].contagemVotos);
        }   
           
    }
    
}
