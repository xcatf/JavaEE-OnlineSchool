package com.xor.service;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.xor.dao.AdminMapper;
import com.xor.dao.CollegeMapper;
import com.xor.dao.CourseFileMapper;
import com.xor.dao.CourseMapper;
import com.xor.dao.CourseVideoMapper;
import com.xor.dao.DiscussMapper;
import com.xor.dao.DiscussPostMapper;
import com.xor.dao.NoticeMapper;
import com.xor.dao.RechargeRecordMapper;
import com.xor.dao.StudentMapper;
import com.xor.dao.StudentTaskMapper;
import com.xor.dao.TaskMapper;
import com.xor.dao.TaskQuestionMapper;
import com.xor.dao.TeacherMapper;
import com.xor.model.Admin;
import com.xor.model.College;
import com.xor.model.Course;
import com.xor.model.CourseFile;
import com.xor.model.CourseVideo;
import com.xor.model.Discuss;
import com.xor.model.DiscussPost;
import com.xor.model.Notice;
import com.xor.model.RechargeRecord;
import com.xor.model.Student;
import com.xor.model.StudentTask;
import com.xor.model.Task;
import com.xor.model.TaskQuestion;
import com.xor.model.Teacher;

@Service("index")
public class IndexService {
	@Resource
	private CollegeMapper collegeMapper;

	@Resource
	private StudentMapper studentMapper;

	@Resource
	private TeacherMapper teacherMapper;

	@Resource
	private CourseMapper courseMapper;

	@Resource
	private NoticeMapper noticeMapper;

	@Resource
	private CourseVideoMapper CourseVideoMapper;

	@Resource
	private CourseFileMapper courseFileMapper;

	@Resource
	private DiscussMapper discussMapper;

	@Resource
	private TaskMapper taskMapper;

	@Resource
	private TaskQuestionMapper taskQuestionMapper;

	@Resource
	private DiscussPostMapper discussPostMapper;

	@Resource
	private StudentTaskMapper studentTaskMapper;

	@Resource
	private RechargeRecordMapper rechargeRecordMapper;

	@Resource
	private AdminMapper adminMapper;

	public void saveCollege(College college) {
		collegeMapper.saveColege(college);
	}

	public Integer countStudentNum() {
		return studentMapper.countEntityNum();
	}

	public List<RechargeRecord> searchRechargeById(Integer id){
		return rechargeRecordMapper.searchEntityById(id);
	}
	
	public List<RechargeRecord> searchAllRecharge() {
		return rechargeRecordMapper.searchAllEntity();
	}

	public List<RechargeRecord> searchRechargeByName(String name) {
		return rechargeRecordMapper.searchEntityByName(name);
	}
	public Integer searchCoinByVideoId(Integer id){
		return CourseVideoMapper.searchCoinById(id);
	}
	
	public List<Course> searchCourseByName(String name){
		return courseMapper.searchEntityByName(name);
	}
	public Integer searchCoinByFileId(Integer id){
		return courseFileMapper.searchCoinById(id);
	}
	
	public List<Student> searchStudentByName(String name){
		return studentMapper.searchEntityByName(name);
	}
	
	public Integer countTeacherNum() {
		return teacherMapper.countEntityNum();
	}

	public void deleteStudentRecharge(Integer id) {
		rechargeRecordMapper.deleteEntityById(id);
	}

	public void saveStudent(Student student) {
		studentMapper.saveEntity(student);
	}
		
	public void saveStudentRecharge(RechargeRecord record){
		rechargeRecordMapper.saveEntity(record);
	}
	
	
	public List<Student> searchStudent(Map<String, Integer> map) {
		return studentMapper.searchEntityByPage(map);
	}

	public void deleteStudent(Integer id) {
		studentMapper.deleteEntity(id);
	}

	public void updateStudent(Student student) {
		studentMapper.updateEntity(student);
	}

	public Student getStudentById(Integer id) {
		return studentMapper.getEntityById(id);
	}

	public List<College> searchCollege() {
		return collegeMapper.searchCollege();
	}

	public College getCollegeById(Integer id) {
		return collegeMapper.getCollegeById(id);
	}

	public void deleteColege(Integer id) {
		collegeMapper.deleteCollege(id);
	}

	public void updateColege(College college) {
		collegeMapper.updateCollege(college);
	}

	public void saveTeacher(Teacher teacher) {
		teacherMapper.saveEntity(teacher);
	}

	public List<Teacher> searchTeacher(Map<String, Integer> map) {
		return teacherMapper.searchEntity(map);
	}

	public void deleteTeacher(Integer id) {
		teacherMapper.deleteEntity(id);
	}

	public void updateTeacher(Teacher teacher) {
		teacherMapper.updateEntity(teacher);
	}

	public Teacher getTeacherById(Integer id) {
		return teacherMapper.getEntityById(id);
	}

	public void saveCourse(Course course) {
		courseMapper.saveEntity(course);
	}

	public List<Course> searchCourse() {
		return courseMapper.searchEntity();
	}

	public void deleteCourse(Integer id) {
		courseMapper.deleteEntity(id);
	}

	public void updateCourse(Course course) {
		courseMapper.updateEntity(course);
	}

	public Course getCourseById(Integer id) {
		return courseMapper.getEntityById(id);
	}

	public void saveNotice(Notice notice) {
		noticeMapper.saveEntity(notice);
	}

	public List<Notice> searchNotice() {
		return noticeMapper.searchEntity();
	}

	public void deleteNotice(Integer id) {
		noticeMapper.deleteEntity(id);
	}

	public void updateNotice(Notice notice) {
		noticeMapper.updateEntity(notice);
	}

	public Notice getNoticeById(Integer id) {
		return noticeMapper.getEntityById(id);
	}

	public void saveCourseVideo(CourseVideo CourseVideo) {
		CourseVideoMapper.saveEntity(CourseVideo);
	}

	public List<CourseVideo> searchCourseVideo(int id) {
		return CourseVideoMapper.searchEntity(id);
	}

	public List<CourseVideo> searchAllCourseVideo() {
		return CourseVideoMapper.searchAllEntity();
	}

	public List<CourseFile> searchAllCourseFile() {
		return courseFileMapper.searchAllEntity();
	}

	public CourseVideo getCourseVideoById(Integer id) {
		return CourseVideoMapper.getEntityById(id);
	}

	public CourseFile getCourseFileById(Integer id) {
		return courseFileMapper.searchEntityById(id);
	}

	public void deleteCourseVideo(Integer id) {
		CourseVideoMapper.deleteEntity(id);
	}

	public void saveCourseFile(CourseFile CourseFile) {
		courseFileMapper.saveEntity(CourseFile);
	}

	public List<CourseFile> searchCourseFile(int id) {
		return courseFileMapper.searchEntity(id);
	}

	public void deleteCourseFile(Integer id) {
		courseFileMapper.deleteEntity(id);
	}

	public List<CourseFile>searchCourseFileJoinTeacher(){
		return courseFileMapper.searchEntityJoinTeacher();
	}
	
	public List<CourseVideo> searchCourseVideoJoinTeacher(){
		return CourseVideoMapper.searchEntityJoinTeacher();
	}
	
	public void saveDiscuss(Discuss discuss) {
		discussMapper.saveEntity(discuss);
	}

	public List<Discuss> searchDiscuss() {
		return discussMapper.searchEntity();
	}

	public void deleteDiscuss(Integer id) {
		discussMapper.deleteEntity(id);
	}

	public void updateDiscuss(Discuss discuss) {
		discussMapper.updateEntity(discuss);
	}

	public Discuss getDiscussById(Integer id) {
		return discussMapper.getEntityById(id);
	}

	public void saveTask(Task task) {
		taskMapper.saveEntity(task);
	}

	public List<Task> searchTask() {
		return taskMapper.searchEntity();
	}

	public void deleteTask(Integer id) {
		taskMapper.deleteEntity(id);
	}

	public void updateTask(Task task) {
		taskMapper.updateEntity(task);
	}

	public Task getTaskById(Integer id) {
		return taskMapper.getEntityById(id);
	}

	public void saveTaskQuestion(TaskQuestion taskQuestion) {
		taskQuestionMapper.saveEntity(taskQuestion);
	}

	public List<TaskQuestion> searchTaskQuestion(Integer taskId) {
		return taskQuestionMapper.searchEntity(taskId);
	}

	public void deleteTaskQuestion(Integer id) {
		taskQuestionMapper.deleteEntity(id);
	}

	public void updateTaskQuestion(TaskQuestion taskQuestion) {
		taskQuestionMapper.updateEntity(taskQuestion);
	}

	public TaskQuestion getTaskQuestionById(Integer id) {
		return taskQuestionMapper.getEntityById(id);
	}

	public void saveDiscussPost(DiscussPost discussPost) {
		discussPostMapper.saveEntity(discussPost);
	}

	public List<DiscussPost> searchDiscussPost(Integer id) {
		return discussPostMapper.searchEntity(id);
	}

	public void saveStudentTask(StudentTask studentTask) {
		studentTaskMapper.saveEntity(studentTask);
	}

	public List<StudentTask> searchStudentTask() {
		return studentTaskMapper.searchEntity();
	}

	public List<StudentTask> searchStudentTaskByStuId(Integer stuId) {
		return studentTaskMapper.searchEntityByStuId(stuId);
	}

	public Admin adminlogin(Map<String, String> map) {
		return adminMapper.searchEntityByAccount(map);
	}

	public Student studentlogin(Map<String, String> map) {
		return studentMapper.searchEntityByAccount(map);
	}

	public Teacher teacherlogin(Map<String, String> map) {
		return teacherMapper.searchEntityByAccount(map);
	}
}
