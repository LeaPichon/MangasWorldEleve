<?php


namespace App\Metier;


class Manga
{
    private $idManga;
    private $prix;
    private $titre;
    private $couverture;
    private $genre;

    public function getIdManga()
    {
        return $this->idManga;
    }

    public function setIdManga($idManga)
    {
        $this->idManga = $idManga;
    }

    public function getPrix()
    {
        return $this->prix;
    }

    public function setPrix($prix)
    {
        $this->prix = $prix;
    }

    public function getTitre()
    {
        return $this->titre;
    }

    public function setTitre($titre)
    {
        $this->titre = $titre;
    }

    public function getCouverture()
    {
        return $this->couverture;
    }

    public function setCouverture($couverture)
    {
        $this->couverture = $couverture;
    }

    public function getGenre()
    {
        return $this->genre;
    }

    public function setGenre($genre)
    {
        $this->genre = $genre;
    }

}