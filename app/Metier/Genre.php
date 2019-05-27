<?php


namespace App\Metier;


class Genre
{
    private $idGenre;
    private $libelleGenre;

    public function getIdGenre()
    {
        return $this->idGenre;
    }

    public function setIdGenre($idGenre)
    {
        $this->idGenre = $idGenre;
    }

    public function getLibelleGenre()
    {
        return $this->libelleGenre;
    }

    public function setLibelleGenre($libelleGenre)
    {
        $this->libelleGenre = $libelleGenre;
    }
}