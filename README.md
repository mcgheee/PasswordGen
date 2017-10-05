# RandPass
PowerShell script to generate passwords from predefined character pools.

- Passwords are returned as a plaintext string.

- The pools omit characters that can lead to readability issues, or that can be problematic for applications.

Pre-Defined Character Pools
---------------------------
Character pools are defined by four arrays, and cotain the listed characters by default. Each generated password will contain at least one character from each pool.

- Upper Case Letters:
  ```
  A B C D E F G H J K L M N P Q R S T U V W X Y Z
  ```
- Lower Case Letters:
  ```
  a b c d e f g h j k m n o p q r s t u v w x y z
  ```
- Numbers:
  ```
  2 3 4 5 6 7 8 9
  ```
- Symbols:
  ```
  ! ^ - _ + : ? . ~
  ```
>Notable Omitted Characters:
>  ```
>  i I l 1 O 0
>  ```

  Length
  ------
  
  The default password length is **12** characters. This can be changed by modifying the *$length* variable.
