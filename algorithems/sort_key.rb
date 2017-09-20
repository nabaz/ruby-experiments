# Write a function that sorts the keys in
#a hash by the length of the key as a string.
# For instance, the hash:
def sort_hash_key_desc(h) # desc
  p h.keys.collect(&:to_s).sort { |a, b| b.length <=> a.length}
end

def sort_hash_key_asc(h) # asc
  p h.keys.collect(&:to_s).sort { |a| a.length}
end

h =  { abc: 'hello', 'another_key' => 123, 4567 => 'third' }
sort_hash_key_desc(h)
sort_hash_key_asc(h)
