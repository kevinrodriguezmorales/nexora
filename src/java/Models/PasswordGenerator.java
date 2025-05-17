/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Models;

import java.security.SecureRandom;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

/**
 *
 * @author kevin
 */
public class PasswordGenerator {

    private static final String LOWERCASE = "abcdefghijklmnopqrstuvwxyz";
    private static final String UPPERCASE = "ABCDEFGHIJKLMNOPQRSTUVWXYZ";
    private static final String NUMBERS = "0123456789";
    private static final String SPECIALS = "!@#$%^&*()_+-=[]{}|;:,.<>?";

    public static String generateSecurePassword(int length, boolean useUpper, boolean useLower,
            boolean useNumbers, boolean useSpecial) {
        if (length < 8) {
            throw new IllegalArgumentException("La contraseña debe tener al menos 8 caracteres");
        }

        StringBuilder password = new StringBuilder(length);
        SecureRandom random = new SecureRandom();
        List<String> charCategories = new ArrayList<>(4);

        if (useLower) {
            charCategories.add(LOWERCASE);
            password.append(LOWERCASE.charAt(random.nextInt(LOWERCASE.length())));
        }
        if (useUpper) {
            charCategories.add(UPPERCASE);
            password.append(UPPERCASE.charAt(random.nextInt(UPPERCASE.length())));
        }
        if (useNumbers) {
            charCategories.add(NUMBERS);
            password.append(NUMBERS.charAt(random.nextInt(NUMBERS.length())));
        }
        if (useSpecial) {
            charCategories.add(SPECIALS);
            password.append(SPECIALS.charAt(random.nextInt(SPECIALS.length())));
        }

        // Rellenar el resto de la contraseña con caracteres aleatorios de todas las categorías seleccionadas
        for (int i = password.length(); i < length; i++) {
            String charCategory = charCategories.get(random.nextInt(charCategories.size()));
            password.append(charCategory.charAt(random.nextInt(charCategory.length())));
        }

        // Mezclar los caracteres para que no estén en orden predecible
        List<Character> passwordChars = new ArrayList<>();
        for (char c : password.toString().toCharArray()) {
            passwordChars.add(c);
        }
        Collections.shuffle(passwordChars, random);

        StringBuilder finalPassword = new StringBuilder(passwordChars.size());
        for (Character c : passwordChars) {
            finalPassword.append(c);
        }

        return finalPassword.toString();
    }

    public static String generateDefaultPassword() {
        // Genera una contraseña de 12 caracteres con todos los tipos de caracteres
        return generateSecurePassword(8, true, true, true, true);
    }
}
