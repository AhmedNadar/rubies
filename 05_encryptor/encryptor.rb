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
end
