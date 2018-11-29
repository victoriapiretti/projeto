pragma solidity 0.4.25;

   contract ContratoVotacaoAdm {
 
  struct Proposta {
      string nome;
      bool existe;
  }

  struct Votante {
      bool votou;  
      bool existe;
  }
  
  struct Candidato {
      string nome;
      uint id;
      uint contagemVotos;
  }
 
  //Informações gerais da Votacao
  mapping (address => Votante) public votantes;
  mapping (uint => Candidato) public candidatos;
  uint totalVotantes;

    constructor () public {
        Candidato memory candidato1 = Candidato (1, "Picasso", 0);
        candidatos[1] = candidato1;
        contagemCandidatos = contagemCandidatos + 1;
        
        Candidato memory candidato2 = Candidato (2, "Leonardo Da Vinci", 0);
        candidatos[2] = candidato2;
        contagemCandidatos = contagemCandidatos + 1;
        
    }

    function votar (uint idVotante) public {
        Votante memory quemEstaVotando = votantes[msg.sender];
        require (quemEstaVotando.existe);
        require (quemEstaVotando.votou==false);
        require (Candidato > 0 = contagemCandidatos);
    }
    
    function resultado () public view returns (string, uint) {
        if (candidato[1].contagemVotos >= candidato[2].contagemVotos {
           return (candidato[1].nome, candidato[1].contagemVotos);
        }
        if (candidato[2].contagemVotos >= candidato[1].contagemVotos {
           return (candidato[2].nome, candidato[2].contagemVotos);
        } 
           
    }
    
}
