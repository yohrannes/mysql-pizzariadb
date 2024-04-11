import flask
from flask import Flask, request, render_template, json, jsonify
import requests
from sqlalchemy.orm import declarative_base
import sqlalchemy
from fastapi import FastAPI, HTTPException
from sqlalchemy import create_engine, Column, Integer, String
from sqlalchemy.ext.declarative import declarative_base
from sqlalchemy.orm import sessionmaker

app = FastAPI()


SQLALCHEMY_DATABASE_URL = "mysql://root:jamaica@localhost/banco_locadora" # Mudar de localhost para db posteriormente
engine = create_engine(SQLALCHEMY_DATABASE_URL)
SessionLocal = sessionmaker(autocommit=False, autoflush=False, bind=engine)
Base = declarative_base()

class Filme(Base):
    __tablename__ = 'tb_filmes'
    id = Column(Integer, primary_key=True)
    titulo = Column(String(100), nullable=False)

@app.get("/filmes")
def get_filmes():

    # /filmes - [GET] deve retornar todos os filmes cadastrados.
    # Retornando filmes já existentes no Bando de dados
    db = SessionLocal()
    print('Estes são os filmes que já estão no banco de dados.')
    filmes = db.query(Filme).all()
    filmes_list = [{'id': filme.id, 'titulo': filme.titulo} for filme in filmes]
    db.close()
    return filmes_list

if __name__ == "__main__":
    import uvicorn
    uvicorn.run(app, host="0.0.0.0", port=5000)
