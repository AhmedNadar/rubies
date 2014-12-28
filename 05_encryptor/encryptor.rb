class Encryptor
  def cipher(rotation)
    characters = (' '..'z').to_a
    rotated_characters = characters.rotate(rotation)
    Hash[characters.zip(rotated_characters)]
  end

  def reverse_rotation(rotation)
    rotation * -1
  end

  def encrypt_letter(letter, rotation)
    cipher_for_rotation = cipher(rotation)
    cipher_for_rotation[letter]
  end

  def encrypt(string, rotation)
    letters = string.split("")

    results = letters.collect do |letter|
      encrypt_letter(letter, rotation)
    end

    results.join
  end

  def decrypt(string, rotation)
    encrypted_letters = string.split("")

    results = encrypted_letters.collect do |letter|
      encrypt_letter(letter, reverse_rotation(rotation))
    end

    results.join
  end

  # IO
  def encrypt_file(filename, rotation)
    # 1- Create the file handle to the input file
    file = File.open(filename, "r")
    # 2- Read the text of the input file
    message = file.read
    file.close
    # 3- Encrypt the text of that file
    encrypted_message =  encrypt(message, rotation)
    # 4- Create a name for the output file
    encrypted_filename = "#{filename}_encrypted"
    # 5- Create an output file handle
    encrypted_file = File.open(encrypted_filename, "w")
    # 6- Write out the text
    encrypted_file.write(encrypted_message)
    # 7- Close the file
    encrypted_file.close
  end

  def decrypt_file(filename, rotation)
    # Create the file handle to the encrypted file
    encrypted_file = File.open(filename, "r")
    # Read the encrypted text
    message = encrypted_file.read
    encrypted_file.close
    # Decrypt the text by passing in the text and rotation
    decrypted_message = decrypt(message, rotation)
    # Create a name for the decrypted file
    decrypted_filename = "#{filename.gsub('encrypted','decrypted')}"
    # Create an output file handle
    decrypted_file = File.open(decrypted_filename, "w")
    # Write out the text
    decrypted_file.write(decrypted_message)
    # Close the file
    decrypted_file.close
  end
end
