/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package br.com.exception;

import javax.servlet.ServletException;

/**
 *
 * @author Jonathan
 */
public class InvalidUserException extends ServletException{
    public InvalidUserException(String message) {
        super(message);
    }
}
