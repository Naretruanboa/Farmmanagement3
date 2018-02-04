package farm3.spring.dao;

import java.util.List;

import farm3.spring.model.TypeSync;



public interface TypeSyncDao {
	public void add(TypeSync typesync);
	public void edit(TypeSync typesync);
	public void delete(int Id);
	public TypeSync getTypeSync(int Id);
	public List getAllTypeSync();
	public List getAllTypeSyncByName(String value);
}
